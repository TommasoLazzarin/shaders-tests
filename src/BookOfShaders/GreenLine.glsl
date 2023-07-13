precision mediump float;

uniform vec2 u_resolution;

float plot(vec2 st) {
    return smoothstep(0.01, 0.0, abs(st.y - st.x));
}

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution;
    float y = st.x; //y della linea che è in funzione della coordinata x del pixel
    vec3 color = vec3(y);

    //stampa una linea
    float pct = plot(st);
    color = (1.0 - pct) * color + pct * vec3(0.0, 1.0, 0.0);

    gl_FragColor = vec4(color, 1.0);
}