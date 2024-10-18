SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 2
AND u.DownVotes <= 214
AND u.UpVotes >= 80
AND u.UpVotes <= 298
AND v.CreationDate <= 130
AND b.Date >= 1467

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;