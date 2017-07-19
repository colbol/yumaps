class InstallSomeContribPackages < ActiveRecord::Migration[5.0]
    def up
    enable_extension "pg_trgm"
    enable_extension "fuzzystrmatch"
    enable_extension "unaccent"
  end

  def down
    disable_extension "pg_trgm"
    disable_extension "fuzzystrmatch"
    disable_extension "unaccent"
  end
end
