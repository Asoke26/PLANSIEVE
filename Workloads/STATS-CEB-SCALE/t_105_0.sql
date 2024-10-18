SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 1
AND u.Reputation >= 174
AND u.Views >= 2342
AND u.DownVotes >= 21
AND u.UpVotes >= 106
AND u.UpVotes <= 693
AND c.CreationDate <= 538
AND u.CreationDate >= 262
AND u.CreationDate <= 1532

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;