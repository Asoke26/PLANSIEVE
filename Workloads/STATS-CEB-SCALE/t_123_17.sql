SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 34
AND u.DownVotes <= 60
AND u.UpVotes >= 46
AND u.UpVotes <= 422
AND v.CreationDate <= 967
AND b.Date >= 621

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;