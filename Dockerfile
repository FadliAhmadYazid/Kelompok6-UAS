FROM jekyll/jekyll:4.2.0

# Direktori kerja di dalam container
WORKDIR /srv/jekyll

# Salin semua file dari repo ke dalam container
COPY . .

# Perintah untuk membangun situs Jekyll
RUN bundle install && jekyll build
