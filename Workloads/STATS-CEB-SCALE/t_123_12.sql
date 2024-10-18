SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 91
AND u.DownVotes <= 114
AND u.UpVotes >= 43
AND u.UpVotes <= 1243
AND v.CreationDate <= 399
AND b.Date >= 970

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;