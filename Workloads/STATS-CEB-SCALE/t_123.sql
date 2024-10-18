SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes>=0
AND u.DownVotes<=3
AND u.UpVotes>=0
AND u.UpVotes<=71
AND v.CreationDate<=1541
AND b.Date>=27

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;