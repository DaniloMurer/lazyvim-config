return {
  'liljaylj/codestats.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  event = { 'TextChanged', 'InsertEnter' },
  cmd = { 'CodeStatsXpSend', 'CodeStatsProfileUpdate' },
  config = function()
    require('codestats').setup {
      username = 'DaniloJakob',  -- needed to fetch profile data
      base_url = 'https://codestats.net',  -- codestats.net base url
      api_key = 'SFMyNTY.UkdGdWFXeHZTbUZyYjJJPSMjTmpJek1BPT0.X70YadVmp4vVNmWLp0yUFLGhC57kiqB-qklEXs3DGy8',
      send_on_exit = true,  -- send xp on nvim exit
      send_on_timer = true,  -- send xp on timer
      timer_interval = 60000,  -- timer interval in milliseconds (minimum 1000ms to prevent DDoSing codestat.net servers)
      curl_timeout = 5,  -- curl request timeout in seconds
    }
  end,
}