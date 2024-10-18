SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 16
AND u.Views = 1250
AND u.DownVotes >= 41
AND u.UpVotes >= 71
AND u.UpVotes <= 662
AND u.CreationDate <= 1344
AND b.Date >= 730
AND b.Date <= 841

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;