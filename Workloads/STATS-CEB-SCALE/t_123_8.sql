SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 27
AND u.DownVotes <= 91
AND u.UpVotes >= 106
AND u.UpVotes <= 183
AND v.CreationDate <= 923
AND b.Date >= 38

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;