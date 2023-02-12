require 'httparty'

while (true)
    puts "Enter the Discord ID you want to look up: "
    discord_id = gets.chomp

    url = "https://discord.com/api/users/#{discord_id}"
    response = HTTParty.get(url, headers: { "Authorization" => "Bot <RemoveTheSymbolsAndInsertDiscordBOTTokenHere>" })
    user_info = response.parsed_response
        puts ""
        puts "Username: #{user_info['username']}"
        puts "Display Name: #{user_info['display_name']}"
        puts "Avatar ID: #{user_info['avatar']}"
        puts "Avatar Decor ID: #{user_info['avatar_decoration']}"
        puts "Flags: #{user_info['public_flags']}"
        puts "Banner: #{user_info['banner']}"
        puts "Banner Color: #{user_info['banner_color']}"
        puts "Account Color: #{user_info['account_color']}"
        puts ""
end
