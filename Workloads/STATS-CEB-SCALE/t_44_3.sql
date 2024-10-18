SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 6
AND u.Views = 641
AND u.DownVotes >= 18
AND u.UpVotes >= 163
AND u.UpVotes <= 10523
AND u.CreationDate <= 743
AND b.Date >= 1075
AND b.Date <= 1320

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;