SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 12
AND u.Reputation >= 565
AND u.Views >= 261
AND u.DownVotes >= 143
AND u.UpVotes >= 144
AND u.UpVotes <= 3274
AND c.CreationDate <= 1172
AND u.CreationDate >= 71
AND u.CreationDate <= 226

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;