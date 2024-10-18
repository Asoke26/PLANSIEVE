SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 34
AND u.UpVotes >= 16
AND u.UpVotes <= 505
AND ph.CreationDate >= 489
AND ph.CreationDate <= 928

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;