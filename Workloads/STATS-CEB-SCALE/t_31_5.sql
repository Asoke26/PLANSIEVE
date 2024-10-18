SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 190
AND u.Views <= 516
AND u.DownVotes >= 12
AND u.DownVotes <= 37
AND u.UpVotes <= 225
AND c.CreationDate >= 994
AND c.CreationDate <= 1006
AND ph.CreationDate >= 28
AND ph.CreationDate <= 780
AND v.CreationDate >= 292
AND v.CreationDate <= 1247

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;