SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 8
AND u.DownVotes <= 20
AND u.UpVotes >= 198
AND u.UpVotes <= 368
AND v.CreationDate <= 765
AND b.Date >= 730

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;