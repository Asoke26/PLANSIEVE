SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 77
AND u.Views <= 2342
AND u.DownVotes >= 48
AND u.DownVotes <= 143
AND u.UpVotes <= 215
AND c.CreationDate >= 71
AND c.CreationDate <= 882
AND ph.CreationDate >= 551
AND ph.CreationDate <= 1150
AND v.CreationDate >= 291
AND v.CreationDate <= 748

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;