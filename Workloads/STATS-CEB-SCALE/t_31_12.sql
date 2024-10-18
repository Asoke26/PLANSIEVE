SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 47
AND u.Views <= 60
AND u.DownVotes >= 9
AND u.DownVotes <= 19
AND u.UpVotes <= 358
AND c.CreationDate >= 231
AND c.CreationDate <= 699
AND ph.CreationDate >= 979
AND ph.CreationDate <= 1107
AND v.CreationDate >= 769
AND v.CreationDate <= 1276

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;