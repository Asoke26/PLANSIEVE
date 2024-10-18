SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 30
AND u.DownVotes <= 60
AND u.UpVotes >= 2
AND u.UpVotes <= 185
AND v.CreationDate <= 1308
AND b.Date >= 1012

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;