y -= 0.5;
lifetime--;

alpha = lifetime / 30;

if (lifetime <= 0) {
    instance_destroy();
}
