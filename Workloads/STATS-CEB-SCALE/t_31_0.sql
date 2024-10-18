SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 87
AND u.Views <= 202
AND u.DownVotes >= 6
AND u.DownVotes <= 212
AND u.UpVotes <= 156
AND c.CreationDate >= 1225
AND c.CreationDate <= 1234
AND ph.CreationDate >= 194
AND ph.CreationDate <= 889
AND v.CreationDate >= 96
AND v.CreationDate <= 1065

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;