SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 34
AND u.DownVotes <= 104
AND u.UpVotes >= 178
AND u.UpVotes <= 578
AND v.CreationDate <= 920
AND b.Date >= 833

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;