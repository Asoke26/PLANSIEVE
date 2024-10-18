SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 33
AND u.Views = 1165
AND u.DownVotes >= 4
AND u.UpVotes >= 77
AND u.UpVotes <= 7035
AND u.CreationDate <= 521
AND b.Date >= 886
AND b.Date <= 1402

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;