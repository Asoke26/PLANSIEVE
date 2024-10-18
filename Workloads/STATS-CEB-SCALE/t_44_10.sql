SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 6
AND u.Views = 330
AND u.DownVotes >= 3
AND u.UpVotes >= 242
AND u.UpVotes <= 366
AND u.CreationDate <= 1034
AND b.Date >= 593
AND b.Date <= 1217

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;