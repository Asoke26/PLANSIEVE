SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 16
AND u.DownVotes <= 114
AND u.UpVotes >= 196
AND u.UpVotes <= 325
AND v.CreationDate <= 649
AND b.Date >= 521

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;