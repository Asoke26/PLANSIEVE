SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes <= 3
AND u.UpVotes >= 150
AND u.UpVotes <= 804
AND ph.CreationDate >= 570
AND ph.CreationDate <= 896

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;