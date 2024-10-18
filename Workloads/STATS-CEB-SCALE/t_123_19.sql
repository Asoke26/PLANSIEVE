SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 4
AND u.DownVotes <= 17
AND u.UpVotes >= 58
AND u.UpVotes <= 2496
AND v.CreationDate <= 1519
AND b.Date >= 1389

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;