SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 18
AND u.DownVotes <= 187
AND u.UpVotes >= 64
AND u.UpVotes <= 100
AND v.CreationDate <= 821
AND b.Date >= 889

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;