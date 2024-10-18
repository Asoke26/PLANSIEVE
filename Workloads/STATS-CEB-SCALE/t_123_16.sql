SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 6
AND u.DownVotes <= 212
AND u.UpVotes >= 69
AND u.UpVotes <= 115
AND v.CreationDate <= 904
AND b.Date >= 390

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;