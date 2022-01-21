export default function () {
  this.route("docs", { path: "/how-to" }, function () {
    this.route("index", { path: "/" });
  });
}
