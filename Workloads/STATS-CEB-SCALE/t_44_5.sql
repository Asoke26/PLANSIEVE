SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 34
AND u.Views = 641
AND u.DownVotes >= 21
AND u.UpVotes >= 48
AND u.UpVotes <= 345
AND u.CreationDate <= 1342
AND b.Date >= 290
AND b.Date <= 1535

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;