SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 6
AND u.Views = 298
AND u.DownVotes >= 19
AND u.UpVotes >= 625
AND u.UpVotes <= 11273
AND u.CreationDate <= 1539
AND b.Date >= 488
AND b.Date <= 1357

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;