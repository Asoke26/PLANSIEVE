SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 23
AND u.DownVotes <= 39
AND u.UpVotes >= 39
AND u.UpVotes <= 869
AND v.CreationDate <= 1255
AND b.Date >= 151

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;