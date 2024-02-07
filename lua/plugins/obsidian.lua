return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  enabled = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },

  init = function()
    -- Set conceal for markdown files
    vim.cmd("autocmd BufRead,BufNewFile *.md set conceallevel=2")
  end,

  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },

  opts = {

    workspaces = {
      {
        name = "personal",
        path = "~/obsidian",
      },
    },

    notes_subdir = "0-notes",
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "0-notes/daily",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%Y-%m-%d",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = "%B %-d, %Y",
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = nil,
    },

    completion = {
      min_chars = 1,
      new_notes_location = "notes_subdir",
    },

    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d-%A",
      time_format = "%H:%M",
    },

    -- Optional, customize how names/IDs for new notes are created.
    note_id_func = function(title)
      -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
      -- In this case a note with the title 'My new note' will be given an ID that looks
      -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
      local suffix = ""
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        return suffix
      end
      return tostring(os.date("%Y%m%d%H%M"))
    end,

    -- Optional, boolean or a function that takes a filename and returns a boolean.
    -- `true` indicates that you don't want obsidian.nvim to manage frontmatter.
    disable_frontmatter = false,

    -- Optional, alternatively you can customize the frontmatter data.
    note_frontmatter_func = function(note)
      -- This is equivalent to the default frontmatter function.
      local out = { id = note.id, aliases = note.aliases, tags = note.tags }
      if note.date == nil then
        out["date"] = os.date("%Y-%m-%d")
      end

      if note.lastmod == nil then
        out["lastmod"] = os.date("%Y-%m-%d")
      end

      -- `note.metadata` contains any manually added fields in the frontmatter.
      -- So here we just make sure those fields are kept in the frontmatter.
      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          out[k] = v
          out["lastmod"] = os.date("%Y-%m-%d")
        end
      end

      return out
    end,
  },
}
