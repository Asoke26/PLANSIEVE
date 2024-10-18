SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE u.DownVotes >= 13
AND u.DownVotes <= 34
AND u.UpVotes >= 186
AND u.UpVotes <= 2317
AND v.CreationDate <= 877
AND b.Date >= 822

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;