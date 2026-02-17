using Gtk;

int main(string[] args) {
    Gtk.init(ref args);
    var window = new Window();
    window.title = "Hello, World!";
    window.set_default_size(200, 100);
    window.add(new Label("Hello, World!"));
    window.show_all();
    window.destroy.connect(Gtk.main_quit);
    Gtk.main();
    return 0;
}
