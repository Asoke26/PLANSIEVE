SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 11
AND u.DownVotes <= 54
AND u.UpVotes >= 14
AND u.UpVotes <= 2619
AND v.CreationDate <= 1099
AND b.Date >= 550

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;