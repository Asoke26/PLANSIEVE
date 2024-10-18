SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 12
AND u.DownVotes <= 16
AND u.UpVotes >= 38
AND u.UpVotes <= 2923
AND v.CreationDate <= 909
AND b.Date >= 369

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;