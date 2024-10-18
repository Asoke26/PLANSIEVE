SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 1
AND u.DownVotes <= 27
AND u.UpVotes >= 210
AND u.UpVotes <= 1437
AND v.CreationDate <= 516
AND b.Date >= 876

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;