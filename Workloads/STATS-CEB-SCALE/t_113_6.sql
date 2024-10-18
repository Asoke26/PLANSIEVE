SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId = 5
AND u.Views >= 216
AND u.DownVotes >= 17
AND u.UpVotes >= 8
AND u.UpVotes <= 201
AND ph.CreationDate <= 589
AND b.Date <= 956
AND u.CreationDate >= 269
AND u.CreationDate <= 551

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;