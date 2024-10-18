SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 8
AND u.Views = 3320
AND u.DownVotes >= 3
AND u.UpVotes >= 218
AND u.UpVotes <= 7035
AND u.CreationDate <= 244
AND b.Date >= 254
AND b.Date <= 1084

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;