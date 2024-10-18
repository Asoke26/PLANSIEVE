SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
votes v,
users u
WHERE v.BountyAmount>=0
AND u.DownVotes>=0
AND u.DownVotes<=0
AND u.UpVotes>=0
AND u.UpVotes<=31
AND b.Date>=96
AND v.CreationDate>=28
AND v.CreationDate<=1542
AND u.CreationDate<=1506

AND ph.UserId = u.Id
AND v.UserId = u.Id
AND c.UserId = u.Id
AND b.UserId = u.Id;