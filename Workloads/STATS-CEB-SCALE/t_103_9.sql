SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 25
AND u.UpVotes >= 99
AND u.UpVotes <= 347
AND ph.CreationDate >= 363
AND ph.CreationDate <= 596

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;