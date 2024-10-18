SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 88
AND u.UpVotes >= 352
AND u.UpVotes <= 492
AND ph.CreationDate >= 196
AND ph.CreationDate <= 1182

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;