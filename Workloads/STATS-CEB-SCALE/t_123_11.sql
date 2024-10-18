SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 48
AND u.DownVotes <= 49
AND u.UpVotes >= 86
AND u.UpVotes <= 224
AND v.CreationDate <= 1372
AND b.Date >= 99

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;