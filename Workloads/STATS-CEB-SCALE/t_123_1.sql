SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 8
AND u.DownVotes <= 139
AND u.UpVotes >= 191
AND u.UpVotes <= 2468
AND v.CreationDate <= 604
AND b.Date >= 927

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;