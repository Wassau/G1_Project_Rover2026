import { useEffect, useState } from "react";

const terrainImage =
  "https://images.unsplash.com/photo-1547235001-d703406d3f17?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&q=88&w=1800";

type IconName =
  | "arrow"
  | "battery"
  | "camera"
  | "expand"
  | "flag"
  | "focus"
  | "pause"
  | "record"
  | "rotate"
  | "satellite"
  | "settings"
  | "signal"
  | "sun"
  | "thermometer";

function Icon({ name, size = 18 }: { name: IconName; size?: number }) {
  const paths: Record<IconName, React.ReactNode> = {
    arrow: <><path d="m12 5 7 7-7 7" /><path d="M5 12h14" /></>,
    battery: <><rect x="3" y="6" width="16" height="12" rx="2" /><path d="M21 10v4M7 10h7" /></>,
    camera: <><path d="M14.5 6 13 4H8L6.5 6H4a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2Z" /><circle cx="10.5" cy="12.5" r="3.5" /></>,
    expand: <><path d="M8 3H3v5M16 3h5v5M8 21H3v-5M16 21h5v-5" /></>,
    flag: <><path d="M5 22V4M5 5h11l-2 4 2 4H5" /></>,
    focus: <><path d="M7 3H3v4M17 3h4v4M7 21H3v-4M17 21h4v-4" /><circle cx="12" cy="12" r="3" /></>,
    pause: <><path d="M8 5v14M16 5v14" /></>,
    record: <circle cx="12" cy="12" r="6" fill="currentColor" stroke="none" />,
    rotate: <><path d="M20 11a8 8 0 1 0-2.34 5.66L20 14" /><path d="M20 7v4h-4" /></>,
    satellite: <><path d="m13 7 4-4 4 4-4 4zM3 17l4-4 4 4-4 4zM14 10l-4 4M5.5 10.5a5 5 0 0 1 8 8M2.5 8a9 9 0 0 1 13.5 13.5" /></>,
    settings: <><circle cx="12" cy="12" r="3" /><path d="M19.4 15a1.7 1.7 0 0 0 .34 1.88l.06.06-2.83 2.83-.06-.06a1.7 1.7 0 0 0-1.88-.34 1.7 1.7 0 0 0-1.03 1.56V21h-4v-.09A1.7 1.7 0 0 0 9 19.35a1.7 1.7 0 0 0-1.88.34l-.06.06-2.83-2.83.06-.06A1.7 1.7 0 0 0 4.63 15 1.7 1.7 0 0 0 3.07 14H3v-4h.09A1.7 1.7 0 0 0 4.65 9a1.7 1.7 0 0 0-.34-1.88l-.06-.06 2.83-2.83.06.06A1.7 1.7 0 0 0 9 4.63 1.7 1.7 0 0 0 10 3.07V3h4v.09A1.7 1.7 0 0 0 15 4.65a1.7 1.7 0 0 0 1.88-.34l.06-.06 2.83 2.83-.06.06A1.7 1.7 0 0 0 19.37 9 1.7 1.7 0 0 0 20.93 10H21v4h-.09A1.7 1.7 0 0 0 19.4 15Z" /></>,
    signal: <><path d="M4 20v-3M9 20v-6M14 20v-9M19 20V8" /></>,
    sun: <><circle cx="12" cy="12" r="4" /><path d="M12 2v2M12 20v2M4.93 4.93l1.42 1.42M17.66 17.66l1.41 1.41M2 12h2M20 12h2M4.93 19.07l1.42-1.42M17.66 6.34l1.41-1.41" /></>,
    thermometer: <><path d="M14 14.76V5a4 4 0 0 0-8 0v9.76a6 6 0 1 0 8 0Z" /><path d="M10 9v8" /></>,
  };

  return (
    <svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
      {paths[name]}
    </svg>
  );
}

export default function App() {
  const [speed, setSpeed] = useState(42);
  const [paused, setPaused] = useState(false);
  const [direction, setDirection] = useState("Idle");
  const [pan, setPan] = useState(0);
  const [tilt, setTilt] = useState(0);
  const [missionTime, setMissionTime] = useState(45296);

  useEffect(() => {
    const timer = window.setInterval(() => {
      if (!paused) setMissionTime((time) => time + 1);
    }, 1000);
    return () => window.clearInterval(timer);
  }, [paused]);

  const formattedTime = new Date(missionTime * 1000).toISOString().slice(11, 19);
  const activeSpeed = direction === "Idle" || paused ? "0.0" : (speed / 50).toFixed(1);
  const wheelAngle = direction === "Turn left" ? "-28" : direction === "Turn right" ? "+28" : "0";
  const compactTelemetry = [
    { icon: "battery" as const, label: "Battery", value: "78", unit: "%", tone: "lime" },
    { icon: "signal" as const, label: "Signal", value: "92", unit: "%", tone: "violet" },
    { icon: "thermometer" as const, label: "Internal temp.", value: "24", unit: "°C", tone: "blue" },
    { icon: "arrow" as const, label: "Speed", value: activeSpeed, unit: "m/s", tone: "orange" },
    { icon: "rotate" as const, label: "Wheel angle", value: wheelAngle, unit: "°", tone: "slate" },
  ];
  const move = (nextDirection: string) => {
    if (!paused) setDirection(nextDirection);
  };
  const nudgePan = () => setPan((current) => (current >= 45 ? -45 : Math.min(current + 15, 45)));
  const nudgeTilt = () => setTilt((current) => (current >= 30 ? -30 : Math.min(current + 10, 30)));

  return (
    <main className="min-h-screen bg-[#f3f2ed] text-[#141a25]">
      <header className="flex h-[72px] items-center justify-between border-b border-[#d8d7d1] bg-[#f8f7f3] px-5 md:px-8">
        <div className="flex items-center gap-3">
          <div className="grid size-9 place-items-center rounded-xl bg-[#172032] text-[#d9ff65] shadow-sm">
            <Icon name="satellite" size={20} />
          </div>
          <div>
            <div className="flex items-baseline gap-2">
              <h1 className="text-[15px] font-extrabold tracking-[-0.02em]">ARES CONTROL</h1>
              <span className="hidden text-[10px] font-bold tracking-[0.18em] text-[#8a8d91] sm:inline">MISSION 04</span>
            </div>
            <p className="text-[11px] font-medium text-[#777b80]">Rover operations console</p>
          </div>
        </div>
        <div className="flex items-center gap-2 sm:gap-4">
          <div className="hidden items-center gap-2 rounded-full border border-[#d7d8d2] bg-white px-3 py-1.5 text-[11px] font-bold sm:flex">
            <span className="size-2 rounded-full bg-[#89d330] shadow-[0_0_0_3px_#e9f8d4]" />
            ROVER ONLINE
          </div>
          <div className="hidden text-right md:block">
            <p className="font-mono text-xs font-bold tabular-nums">{formattedTime}</p>
            <p className="text-[9px] font-bold tracking-[0.12em] text-[#93969a]">MISSION ELAPSED</p>
          </div>
          <button className="icon-button" aria-label="Open settings"><Icon name="settings" /></button>
          <div className="grid size-9 place-items-center rounded-full bg-[#e7c3a8] text-[11px] font-extrabold">AM</div>
        </div>
      </header>

      <div className="mx-auto max-w-[1600px] p-3 md:p-5 lg:p-6">
        <section className="grid items-start justify-center gap-4 xl:grid-cols-[minmax(0,5fr)_minmax(0,6fr)] 2xl:grid-cols-[600px_720px]">
          <div className="camera-shell relative min-h-[360px] w-full max-w-[600px] justify-self-center overflow-hidden rounded-[22px] bg-[#172032] shadow-[0_18px_45px_rgba(23,32,50,0.12)] sm:min-h-[430px] md:min-h-[520px] xl:min-h-[600px]">
            <img
              src={terrainImage}
              alt="Rocky desert valley seen through the rover camera"
              className="absolute inset-0 size-full object-cover transition-[object-position] duration-300"
              style={{ objectPosition: `${50 + pan / 4}% ${50 + tilt / 3}%` }}
            />
            <div className="absolute inset-0 bg-[linear-gradient(180deg,rgba(8,13,22,0.36)_0%,transparent_24%,transparent_62%,rgba(8,13,22,0.65)_100%)]" />
            <div className="scanlines absolute inset-0 opacity-20" />

            <div className="absolute left-5 right-5 top-5 flex items-start justify-between text-white md:left-7 md:right-7 md:top-7">
              <div className="space-y-2">
                <div className="flex items-center gap-2">
                  <span className="rounded-md bg-[#dfff67] px-2 py-1 text-[10px] font-extrabold tracking-[0.1em] text-[#172032]">CAM 01</span>
                  <span className="font-mono text-[11px] font-bold text-white/75">NAV / FRONT</span>
                </div>
                <p className="font-mono text-[10px] text-white/55">17.4843° N · 43.2187° E</p>
              </div>
              <div className="flex gap-2">
                <button className="glass-button" aria-label="Refocus camera"><Icon name="focus" /></button>
                <button className="glass-button" aria-label="Enter fullscreen"><Icon name="expand" /></button>
              </div>
            </div>

            <div className="reticle absolute left-1/2 top-1/2 size-20 -translate-x-1/2 -translate-y-1/2 rounded-full border border-white/40">
              <span className="absolute left-1/2 top-[-12px] h-5 border-l border-white/50" />
              <span className="absolute bottom-[-12px] left-1/2 h-5 border-l border-white/50" />
              <span className="absolute left-[-12px] top-1/2 w-5 border-t border-white/50" />
              <span className="absolute right-[-12px] top-1/2 w-5 border-t border-white/50" />
              <span className="absolute left-1/2 top-1/2 size-1 -translate-x-1/2 -translate-y-1/2 rounded-full bg-[#dfff67]" />
            </div>

            <div className="absolute bottom-5 left-5 right-5 md:bottom-7 md:left-7 md:right-7">
              <div className="flex items-end justify-between text-white">
                <div>
                  <p className="mb-1 text-[10px] font-bold tracking-[0.14em] text-white/60">HEADING</p>
                  <p className="font-mono text-xl font-bold">084.2° <span className="text-xs text-white/60">E</span></p>
                </div>
                <div className="text-right">
                  <p className="mb-1 text-[10px] font-bold tracking-[0.14em] text-white/60">CURRENT MOTION</p>
                  <p className="text-sm font-extrabold text-[#dfff67]">{paused ? "SYSTEM PAUSED" : direction.toUpperCase()}</p>
                </div>
              </div>
            </div>
          </div>

          <aside className="flex w-full max-w-[720px] justify-self-center flex-col gap-4">
            <div className="panel relative w-full flex-1 p-4 sm:p-5 md:p-6">
              <div className="mb-5 flex items-start justify-between">
                <div>
                  <p className="eyebrow">MANUAL CONTROL</p>
                  <h2 className="mt-1 text-xl font-extrabold tracking-[-0.03em]">Rover Controls</h2>
                </div>
                <span className="rounded-lg bg-[#edf1e5] px-2 py-1 font-mono text-[10px] font-bold text-[#60702a]">ARMED</span>
              </div>

              <div className="flex flex-col items-center justify-center gap-3 min-[400px]:flex-row">
                <div className="relative grid w-[216px] grid-cols-3 gap-2">
                  <span />
                  <button onPointerDown={() => move("Forward")} onPointerUp={() => setDirection("Idle")} className="drive-button" aria-label="Drive forward">
                    <span className="-rotate-90"><Icon name="arrow" size={22} /></span>
                  </button>
                  <span />
                  <button onPointerDown={() => move("Turn left")} onPointerUp={() => setDirection("Idle")} className="drive-button" aria-label="Turn left">
                    <span className="rotate-180"><Icon name="arrow" size={22} /></span>
                  </button>
                  <button onPointerDown={() => move("Reverse")} onPointerUp={() => setDirection("Idle")} className="drive-button" aria-label="Drive backward">
                    <span className="rotate-90"><Icon name="arrow" size={22} /></span>
                  </button>
                  <button onPointerDown={() => move("Turn right")} onPointerUp={() => setDirection("Idle")} className="drive-button" aria-label="Turn right">
                    <Icon name="arrow" size={22} />
                  </button>
                </div>
                <div className="grid grid-cols-2 gap-2 min-[400px]:grid-cols-1">
                  <button onClick={nudgePan} className="camera-move-button" aria-label="Move camera horizontally">
                    <span className="flex items-center">
                      <span className="rotate-180"><Icon name="arrow" size={14} /></span>
                      <Icon name="arrow" size={14} />
                    </span>
                    <span>PAN</span>
                    <strong>{pan > 0 ? "+" : ""}{pan}°</strong>
                  </button>
                  <button onClick={nudgeTilt} className="camera-move-button" aria-label="Move camera vertically">
                    <span className="flex items-center">
                      <span className="-rotate-90"><Icon name="arrow" size={14} /></span>
                      <span className="rotate-90"><Icon name="arrow" size={14} /></span>
                    </span>
                    <span>TILT</span>
                    <strong>{tilt > 0 ? "+" : ""}{tilt}°</strong>
                  </button>
                </div>
              </div>

              <div className="my-6 h-px bg-[#e1e1dc]" />
              <div className="mb-3 flex items-end justify-between">
                <div>
                  <p className="eyebrow">MAX SPEED</p>
                  <p className="mt-1 text-sm font-bold">Drive velocity</p>
                </div>
                <p className="font-mono text-lg font-bold">{(speed / 50).toFixed(1)} <span className="text-[10px] text-[#8c8f91]">m/s</span></p>
              </div>
              <input className="speed-slider w-full" type="range" min="0" max="100" value={speed} onChange={(event) => setSpeed(Number(event.target.value))} style={{ "--range": `${speed}%` } as React.CSSProperties} aria-label="Maximum drive speed" />
              <div className="mt-2 flex justify-between font-mono text-[9px] text-[#a0a2a1]"><span>0.0</span><span>2.0 m/s</span></div>

              <div className="mb-5 mt-6 h-px bg-[#e1e1dc]" />
              <div className="mb-3 flex items-center justify-between">
                <div>
                  <p className="eyebrow">CAMERA ROTATION</p>
                  <p className="mt-1 text-sm font-bold">Pan &amp; tilt</p>
                </div>
                <button
                  onClick={() => {
                    setPan(0);
                    setTilt(0);
                  }}
                  className="flex items-center gap-1.5 rounded-lg border border-[#dcddd7] bg-white px-2.5 py-1.5 text-[9px] font-extrabold tracking-[0.08em] text-[#686d72]"
                >
                  <Icon name="focus" size={13} />
                  CENTER
                </button>
              </div>
              <div className="space-y-3">
                <label className="camera-axis">
                  <span>PAN</span>
                  <input
                    type="range"
                    min="-45"
                    max="45"
                    value={pan}
                    onChange={(event) => setPan(Number(event.target.value))}
                    aria-label="Camera pan angle"
                  />
                  <strong>{pan > 0 ? "+" : ""}{pan}°</strong>
                </label>
                <label className="camera-axis">
                  <span>TILT</span>
                  <input
                    type="range"
                    min="-30"
                    max="30"
                    value={tilt}
                    onChange={(event) => setTilt(Number(event.target.value))}
                    aria-label="Camera tilt angle"
                  />
                  <strong>{tilt > 0 ? "+" : ""}{tilt}°</strong>
                </label>
              </div>
            </div>

            <button onClick={() => setPaused(!paused)} className={`pause-button ${paused ? "resume" : ""}`}>
              <span className="grid size-9 place-items-center rounded-full bg-white/12"><Icon name={paused ? "arrow" : "pause"} size={17} /></span>
              <span className="text-left"><strong className="block text-sm">{paused ? "Resume mission" : "Pause all movement"}</strong><span className="text-[10px] opacity-55">{paused ? "Return rover to active control" : "Immediate controlled stop"}</span></span>
              <Icon name="arrow" />
            </button>
          </aside>
        </section>

        <section className="mt-4 grid gap-2 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-[repeat(5,minmax(0,1fr))_1.3fr]">
          {compactTelemetry.map((item) => (
            <article className="panel telemetry-card" key={item.label}>
              <div className={`telemetry-icon ${item.tone}`}><Icon name={item.icon} /></div>
              <div>
                <p className="text-[10px] font-bold tracking-[0.08em] text-[#8b8e91]">{item.label.toUpperCase()}</p>
                <p className="mt-0.5 text-lg font-extrabold tracking-[-0.04em]">{item.value}<span className="ml-1 text-[10px] text-[#777b7f]">{item.unit}</span></p>
              </div>
            </article>
          ))}
          <article className="panel relative min-h-[82px] overflow-hidden px-4 py-3">
            <div className="absolute inset-0 opacity-[0.07] [background-image:radial-gradient(#172032_1px,transparent_1px)] [background-size:12px_12px]" />
            <div className="relative flex h-full items-center justify-between">
              <div>
                <p className="eyebrow">NEXT WAYPOINT</p>
                <h3 className="mt-1 text-sm font-extrabold">Ridge Alpha</h3>
                <p className="mt-0.5 font-mono text-[9px] text-[#808488]">1.8 km · ETA 24 min</p>
              </div>
              <div className="relative grid size-12 place-items-center rounded-full border border-dashed border-[#aeb2ac]">
                <span className="absolute size-2 rounded-full bg-[#172032]" />
                <span className="absolute bottom-0 right-0 grid size-6 place-items-center rounded-full bg-[#dfff67] text-[#172032]"><Icon name="flag" size={12} /></span>
              </div>
            </div>
          </article>
        </section>

        <footer className="flex flex-col justify-between gap-2 px-1 pb-2 pt-5 text-[10px] font-medium text-[#8b8e91] sm:flex-row">
          <p>ARES IV · SOL 047 · Gale Highlands Survey</p>
          <p>Photo by Juli Kosolapova on Unsplash · Link latency 1.2s</p>
        </footer>
      </div>
    </main>
  );
}
