FROM jekyll/jekyll:4.2.0

# Direktori kerja di dalam container
WORKDIR /srv/jekyll

# Salin Gemfile dan Gemfile.lock lebih awal
COPY Gemfile Gemfile.lock ./

# Install dependensi Jekyll
RUN bundle install

# Salin semua file proyek ke container
COPY . .

# Bangun situs Jekyll
RUN jekyll build
