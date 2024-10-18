SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 33
AND u.Reputation >= 2108
AND u.Views >= 155
AND u.DownVotes >= 2
AND u.UpVotes >= 105
AND u.UpVotes <= 482
AND c.CreationDate <= 842
AND u.CreationDate >= 114
AND u.CreationDate <= 160

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;