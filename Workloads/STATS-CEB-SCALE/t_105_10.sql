SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 3
AND u.Reputation >= 526
AND u.Views >= 121
AND u.DownVotes >= 34
AND u.UpVotes >= 14
AND u.UpVotes <= 238
AND c.CreationDate <= 1020
AND u.CreationDate >= 488
AND u.CreationDate <= 1386

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;