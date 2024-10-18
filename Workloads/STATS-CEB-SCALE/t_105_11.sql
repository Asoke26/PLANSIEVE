SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 33
AND u.Reputation >= 453
AND u.Views >= 238
AND u.DownVotes >= 27
AND u.UpVotes >= 109
AND u.UpVotes <= 2156
AND c.CreationDate <= 696
AND u.CreationDate >= 552
AND u.CreationDate <= 863

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;