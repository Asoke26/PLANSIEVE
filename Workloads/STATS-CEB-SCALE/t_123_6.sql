SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 41
AND u.DownVotes <= 103
AND u.UpVotes >= 173
AND u.UpVotes <= 1437
AND v.CreationDate <= 479
AND b.Date >= 1172

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;