SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId = 16
AND u.Views >= 653
AND u.DownVotes >= 9
AND u.UpVotes >= 237
AND u.UpVotes <= 2219
AND ph.CreationDate <= 1150
AND b.Date <= 427
AND u.CreationDate >= 116
AND u.CreationDate <= 874

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;