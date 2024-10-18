SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 11
AND u.Reputation >= 250
AND u.Views >= 50
AND u.DownVotes >= 27
AND u.UpVotes >= 1273
AND u.UpVotes <= 3274
AND c.CreationDate <= 495
AND u.CreationDate >= 37
AND u.CreationDate <= 619

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;