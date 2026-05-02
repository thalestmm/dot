# [R]un
[group('dev')]
r args="":
    @go run . {{ args }}

# [B]uild
[group('dev')]
b:
    @go build -o tmp/main .

# [W]atch
[group('dev')]
w:
    @air -c config/air.toml

# Stage all changes and [c]ommit
[group('dev')]
c msg="chore: update": f
    @git add .
    @git commit -m "{{ msg }}"

# Stage all changes, commit and [p]ush
[group('dev')]
p msg="chore: update":
    @just c "{{ msg }}"
    @git push

# [F]ormat code
[group('ci')]
f:
    @go fmt ./...
    @go vet ./...
