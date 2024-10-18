SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 7
AND u.DownVotes <= 42
AND u.UpVotes >= 80
AND u.UpVotes <= 475
AND v.CreationDate <= 1284
AND b.Date >= 1005

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;