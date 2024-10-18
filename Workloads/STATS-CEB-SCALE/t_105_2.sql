SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 13
AND u.Reputation >= 1015
AND u.Views >= 103
AND u.DownVotes >= 20
AND u.UpVotes >= 3
AND u.UpVotes <= 444
AND c.CreationDate <= 701
AND u.CreationDate >= 362
AND u.CreationDate <= 1400

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;