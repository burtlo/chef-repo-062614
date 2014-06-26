all_users = search("users", "*:*")

# ls
# exit
# exit!

all_users.each do |data|

  user data["id"] do
    comment data["comment"]
    uid data["uid"]
    gid data["gid"]
    home data["home"]
    shell data["shell"]
  end
end
