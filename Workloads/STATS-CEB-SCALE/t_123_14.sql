SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 60
AND u.DownVotes <= 91
AND u.UpVotes >= 198
AND u.UpVotes <= 1146
AND v.CreationDate <= 1434
AND b.Date >= 1244

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;